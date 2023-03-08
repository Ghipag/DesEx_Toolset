classdef SubTargetClass
    % SubTargetClass   Class for storing information about a particular
    % SubTarget - e.g area of a target with a specific data generation rate
    % 
    % SubTargetClass Properties:
    %    latitude - float containing latitude of ground station
    %    longitude - float containing longitude of ground station
    %    access - object pulled from STK containing inofrmation on ground
    %    station acces times
    %
    % SubTargetClass Methods:
    %    GroundStationClass - Constructor of GroundStationClass
   properties
      name {mustBeText} = "undefined" % name of the target
      datagenerationrate {mustBeNumeric} % float describing the data generation rate associated with this target sub area
      shapefilepath % string containing path shapefile with corresponding target area
      shapefilelats {mustBeNumeric} % vector containing latitudes of points defined in shapefile
      shapefilelons {mustBeNumeric} % vector containing longitudes of points defined in shapefile
      accesstimesteps {mustBeNumeric} % vector containing time steps spent in target access
      accessstartlist {mustBeNumeric} % vector containing access start times
      accessstoplist {mustBeNumeric} % vector containing access stop times
      access % access object
      accessstarttimes = {} % start times of accesses
      accessstarttimesstr % start times of accesses in string
      accessstarttimesnum % start times of accesses in number
      accessstoptimes = {} % stop times of accesses
      accessstoptimesstr % stop times of accesses in string
      accessstoptimesnum % stop times of accesses in number
      accesssdurations % durations of accesses
      accesssdurationsstr % durations of accesses in string
   end
      
   methods
       function obj = SubTargetClass(name,datarate,shapefilepath)
           %TargetClass is the constructor of the
           %TargetClass object
           % Inputs:
           %    name : string containting name of the target
           %    xdatshapefile : vector containing x ordinates of points
           %    distrubuted across target area or string containing
           %    shapefile path
           %    ydat : vector containing y ordinates of points distrubuted across target area
           %    zdat : vector containing z ordinates of points distrubuted across target area
           % Outputs:
           %    obj : the SubTargetClass object
            if nargin == 3 % old constructor for earth area target
                obj.name = name;
                obj.datagenerationrate = datarate;
                obj.shapefilepath = shapefilepath;
            end
       end     

   end
end