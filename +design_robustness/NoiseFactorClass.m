classdef NoiseFactorClass
    % NoiseFactorClass   Class for storing information about a particular
    % Noise Factor
    %
    % NoiseFactorClass Properties:
    %    parameterfunction - function to be fitted to collection data of
    %    system parameter
    %    parameterplotfunction - function to be used to plot the aproxximated 
    %    values of the system parameter
    %    collectionmatrix - store of all collection point values
    %    structureddata - restructured store of all collection point values
    %    for generating surface functions and plots
    %    approximatesurface - Approximated surface of the system parameter
    %    approximatefunction - Approximated function of the system parameter
    %    modelelementname - name of hte element of the model from which the
    %    design values is generated
    %
    % NoiseFactorClass Methods:
    %    NoiseFactorClass - Constructor of NoiseFactorClass
    %    restructurecollectionmatrix - restrucutres the collection matrix to make it suitable for generating surfaces functions and plots
    %    
   properties
        modelelementname {mustBeText} = "undefined" % modelelementname - name of the element of the model from which the noise factor is generated
        csmaddress % csmaddress - numeric vector representing the noise factors address in the model tree
        mean % mean value of the noise parameter
        currentvalue % currentvalue - current value of the noise factor
        CoV % CoV - coefficent of variance for the noisefactor
        deltapercent = 1 % percantage offest used to calculate gradient
        collectionvector {mustBeNumeric} % collectionvector - store of all collection point values
        
   end
   methods
       function obj = NoiseFactorClass(name,mean,cov,address)
           %NoiseFactorClass is the constructor of the
           %NoiseFactorClass object
           % Inputs:
           %    name : name of the element of the model from which the design values is generated
           %    dimensions : an array of the number of collection points to
           %    be taken in each dimension
           % Outputs:
           %    obj : the NoiseFactorClass object
            if nargin == 4
                obj.modelelementname = name;
                obj.mean = mean;
                obj.CoV = cov;
                obj.csmaddress = address;
                obj.collectionvector = [mean, mean+(mean*obj.deltapercent/100)]; % for now just using a forward difference scheme
            end
       end
   end
end