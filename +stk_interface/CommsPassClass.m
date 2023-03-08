classdef CommsPassClass
    % CommsPassClass   Class for storing information about a particular
    % CommsPass
    % 
    % CommsPassClass Properties:
    %    latitude - float containing latitude of ground station
    %    longitude - float containing longitude of ground station
    %
    % CommsPassClass Methods:
    %    SpacecraftClass - Constructor of SpacecraftClass
   properties
      windowlength {mustBeNumeric} % float containing duration in seconds of access window
      groundstationID % id of groundation to use
      startTime % start time of pass
      stopTime % stop time of pass
   end
   methods
       function obj = CommsPassClass(duration,gsindex,stime)
           %CommsPassClass is the constructor of the
           %CommsPassClass object
           % Inputs:
           %    name : string containting name of the Spacecraft
           %    sma : float containing SMA of spacecraft orbit
           % Outputs:
           %    obj : the CommsPassClass object
            if nargin == 3
                obj.windowlength = duration;
                obj.groundstationID = gsindex;
                obj.startTime = stime;

            end
       end
   end
end