/*After a person buy a car, (s)he'll need to register it with his local Department of Motor Vehicles (DMV),
Secretary of State (SOS), Department of Revenue (DOR), Motor Vehicle Division (MVD), or other local entity
that sets vehicle regulations in his\her state.
The VIN (Vehicle Identification Number) serves as the car's fingerprint, as no two vehicles in operation have
the same VIN. A VIN is composed of 17 characters (digits and capital letters) that act as a unique identifier for the vehicle.
*/
contract VehicleRegulator {

    //vin - Vehicle
    mapping(string => Vehicle) public vehicles;


    // Events
    event LogVehichleRegistered(address vehicleOwner, string vin);
    event LogLicensePlateRenewed(address vehicleOwner, string licensePlate);

    struct Vehicle {
        string vin;
        string licensePlate;
        string transponderId;
        address driver;
        //..
    }

    /**
     * @dev Registers a vehicle.
     * @newVehicleOwner newVehicleOwner A new vehicle's owner.
     * @return result True if a vehicle is registered; otherwise False.
     */
    function registerVehicle(address newVehicleOwner) public payable returns (bool result ) {
        //there will be business checks like
        // - isStolenVehicle
        // - checkVehicleDocuments

        //the function is payable due to Payment fees (tax, license plate fee,  certificate of title and others)
    }

    /**
     * @dev Renew a vehicle license plate.
     * @owner owner A vehicle's owner.
     * @return result True if a vehicle license plate is renewal; otherwise False.
     */
    function renewLicensePlate(address owner, string licensePlate) public payable returns (bool result) {
        //the function is payable due to Payment fees
    }

    /**
    * @dev Find a detail information by VIN .
    * @deiver driver A vehicle's owner.
    * @licensePlate licensePlate A vehicle license plate.
    * @transponderId transporterId A transporter ID.
    * @return result True if a vehicle is registered; otherwise False.
    */
    function findByVIN(string vin) public returns (address driver, string vin, string licensePlate, string transponderId)  {
    //...
    }

    /**
    * @dev Check whether a vehicle stolen or not by VIN.
    * @vin vin Vehicle Identification Number.
    * @return result True if a vehicle is stolen; otherwise False.
    */
    function isStolenVehicle(string vin) internal returns(bool result) {
    //...
    }

    /**
    * @dev Check whether all vehicle documents are valid by VIN.
    * @vin vin Vehicle Identification Number.
    * @return result True if documents is valid; otherwise False.
    */
    function isValidVehicleDocuments(String vin) internal returns (bool result){
    //.....
    }

    //default function
    function(){
    //...
    }
}