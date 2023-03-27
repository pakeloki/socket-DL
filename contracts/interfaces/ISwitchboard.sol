// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.7;

interface ISwitchboard {
    function registerCapacitor(
        address capacitor_,
        uint256 maxPacketSize_
    ) external;

    function allowPacket(
        bytes32 root,
        bytes32 packetId,
        uint256 srcChainSlug,
        uint256 proposeTime
    ) external view returns (bool);

    function payFees(uint256 dstChainSlug) external payable;

    function getMinFees(
        uint256 dstChainSlug
    ) external view returns (uint256 switchboardFee, uint256 verificationFee);
}
