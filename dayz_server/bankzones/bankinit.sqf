/*************************************************************************************************/
/*																								 */
/*		Author: Soul																			 */
/*		Filename: bankinit.sqf																	 */
/*		Description: Initiates all server side used functions/EH/Map edits used in SC Mod		 */
/*																								 */
/*		Credits: To be filled in on final release												 */
/*																								 */
/*************************************************************************************************/

execVM "\z\addons\dayz_server\bankzones\banks.sqf";

"PVDZE_bank_Save" addPublicVariableEventHandler {
	_playerObj = ((_this select 1) select 0);
	_playerID = getPlayerUID _playerObj;
	_bankMoney = _playerObj getVariable ["bankMoney",0];
	
	if(_playerID != "") then {
		_key = format["CHILD:299:%1:%2:",_playerID,_bankMoney];
		_key call server_hiveReadWrite;
	};
};

