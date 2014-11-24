function MyMobileSensorExplorer(deviceType)
% MobileSensorExplorer Explore data from your mobile device sensors
%
% MobileSensorExplorer() displays the readings from all active sensors on
% an Android or Apple device. 
%
% MobileSensorExplorer(DEVICETYPE) displays readings from the sensors on
% the selected type of device.  DEVICETYPE may be 'AppleMobile' or
% 'AndroidMobile'
%
% See also: sensorgroup

%   Copyright 2013 The MathWorks, Inc.

    narginchk(0,1);
    
    if nargin == 0
        % If a device type is not specified, put up a dialog to pick it
        deviceType = pickDeviceType();
        if isempty(deviceType)
            % User aborted the device selection
            return
        end
    else
        % Check that the device type is valid
        if ~ismember(deviceType,{'AndroidMobile','AppleMobile'})
            error('MATLAB:MobileSensorExplorer:UnknownDeviceType', 'The deviceType should be ''AppleMobile'' or ''AndroidMobile''.');
        end
    end
    

    % Set up the connection with the device.  Use the undocumented feature
    % allowing for a custom message, if it needed
    hConnectionFigure = [];
    hMainFigure = [];
    dev = [];
    mobile = [];
    mobile.Acceleration = [];
    mobile.AngularVelocity = [];
    mobile.MagneticField = [];
    mobile.Orientation = [];
    mobile.LatitudeLongitude = [];
    mobile.Altitude = [];
    mobile.Speed = [];
    mobile.Course = [];
    mobile.Membrane = [];    
    
    try
        dev = sensorgroup(deviceType,'HideTip',@displayConnectionTip);
    catch e
        if ishandle(hConnectionFigure)
            delete(hConnectionFigure);
        end
        
        switch e.identifier
            case 'MATLAB:sensorgroup:NoDataReceived'
                w = warning('backtrace', 'off');
                warning(e.message);
                warning(w);
        end
        
        return;
        
    end
    
        function displayConnectionTip(tipText)
            % displayConnectionTip Show dialog with connection information
            % This function is called by sensorgroup with the text of the
            % message (which is different for each device type) if it is
            % needed (if the data comes in right away, the message will not
            % appear)
            hConnectionFigure = createFigure('Connection Information', [550 225], 0.5, @closeConnectionTip);
            annotation(hConnectionFigure,'textbox',...
                                    'EdgeColor','none',...
                                    'HorizontalAlignment','left',...
                                    'Units','pixels',...
                                    'Position',[25 25 500 175],...
                                    'String',regexprep(tipText,'\\n',char(10)),...
                                    'VerticalAlignment','middle');
        end
    
    % Close the connection message if it is being displayed
    if ishandle(hConnectionFigure)
        delete(hConnectionFigure);
    end

    
    try
        % Create the main figure
        hMainFigure = createFigureFromScreenSize('Mobile Sensor Explorer',0.90,0.50,1.00);

        % Create the plots
        import matlab.mobilesensor.internal.mobileSensorExplorer.SensorVisualization
        import matlab.mobilesensor.internal.mobileSensorExplorer.GeodeticPositionVisualization

        figurePosition = get(hMainFigure,'Position');
        hDiscardButton = uicontrol(hMainFigure,'Style','pushbutton',...
                                    'Callback',@discardButtonAction,...
                                    'String','Discard Logs',...
                                    'FontSize',14,...
                                    'FontWeight','bold',...
                                    'Position',[(figurePosition(3) - 210), 10 200 30],...
                                    'TooltipString','Delete the historical logs of values for all sensors.');

       
        mobile.Acceleration = SensorVisualization('Acceleration',dev);

    catch e
        deleteAllObjects();
        rethrow(e);
    end
    
    function discardButtonAction(~,~)
        % handle the user press of the discard logs button
        discardlogs(dev);
    end

    function deviceType = pickDeviceType()
        % Interactive display to pick a device type.  Returns empty,
        % AndroidMobile, or AppleMobile
        deviceTypeMap = {'AndroidMobile','AppleMobile'};
        [selection,ok] = listdlg('ListString',{'Android device','Apple device'},...
                                    'SelectionMode','single',...
                                    'ListSize',[160 50],...
                                    'Name','Mobile Sensor Explorer',...
                                    'PromptString','Select Device Type:');
        if ok == 0
            deviceType = [];
            return;
        end
        
        deviceType = deviceTypeMap{selection};
    end

    function hFigure = createFigureFromScreenSize(name,horizontalPercentage, verticalPercentage,verticalPositionOnPage)
        % Create a figure relative in size to the primary screen.
        %
        % name: Title of the figure
        % horizontalPercentage: The width of the figure (0.0 - 1.0) relative to the size of the screen
        % verticalPercentage: The height of the figure (0.0 - 1.0) relative to the size of the screen
        % verticalPositionOnPage: The position of the figure vertically 0 is the lowest position, 1.0 is the highest
        screenSize = get(0,'Screensize');
        screenWidth = screenSize(3);
        screenHeight = screenSize(4) - 100;  % Allow room for task bar
        hFigure = createFigure(name,...
                                [screenWidth * horizontalPercentage                                  % Width
                                 screenHeight * verticalPercentage],...                             % Height
                                verticalPositionOnPage, @closeWindow);
    end

    function hFigure = createFigure(name,sizeInPixels,verticalPositionOnPage, closeFcn)
        % Create a figure of a given size on the primary screen.
        %
        % name: Title of the figure
        % sizeInPixels: The [width height] of the figure in pixels
        % verticalPositionOnPage: The position of the figure vertically 0 is the lowest position, 1.0 is the highest
        screenSize = get(0,'Screensize');
        screenWidth = screenSize(3);
        screenHeight = screenSize(4) - 100;  % Allow room for task bar
        hFigure = figure('Name',name,...
                            'NumberTitle','off',...
                            'Position',...
                            [(screenWidth - sizeInPixels(1)) / 2                        % Left
                             (screenHeight - sizeInPixels(2)) * verticalPositionOnPage   % Bottom
                             sizeInPixels(1)                                            % Width
                             sizeInPixels(2)],...                                       % Height
                   'Menubar', 'none',...
                   'CloseRequestFcn',closeFcn);
    end
    
    function deleteObj(obj)
        try
            if isa(obj, 'handle') && isvalid(obj)
                delete(obj);
            end
        catch
        end
    end

    function deleteAllObjects(varargin)
        % Deletes any and all created objects
        deleteObj(mobile.Acceleration);
        deleteObj(mobile.AngularVelocity);
        deleteObj(mobile.MagneticField);
        delete(mobile.Orientation);
        delete(mobile.LatitudeLongitude);
        delete(mobile.Altitude);
        delete(mobile.Speed);
        delete(mobile.Course);
        delete(mobile.Membrane);
        try
            if isvalid(dev)
                delete(dev)
            end
        catch
        end
    end
    
    function closeWindow(varargin)
        % Deletes objects and closes all the windows
        try
            deleteAllObjects
        catch
        end
        
        try
            if ishandle(hMainFigure)
                delete(hMainFigure)
            end
        catch
        end
        
        try
            if ishandle(hMembraneFigure)
                delete(hMembraneFigure)
            end
        catch
        end
        
        try
            if ishandle(hConnectionFigure)
                delete(hConnectionFigure);
            end
        catch
        end
    end

    function closeConnectionTip(varargin)
        if ishandle(hConnectionFigure)
            delete(hConnectionFigure);
        end
    end
end
% LocalWords:  DEVICETYPE sensorgroup Screensize
