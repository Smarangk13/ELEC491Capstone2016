<?xml version="1.0" encoding="UTF-8"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="12118" systemVersion="16E195" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" colorMatched="YES" initialViewController="0f7-SY-Wjg">
    <device id="ipad9_7" orientation="portrait">
        <adaptation id="fullscreen"/>
    </device>
    <dependencies>
        <deployment identifier="iOS"/>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="12086"/>
        <capability name="documents saved in the Xcode 8 format" minToolsVersion="8.0"/>
    </dependencies>
    <scenes>
        <!--Home View Controller-->
        <scene sceneID="tne-QT-ifu">
            <objects>
                <viewController id="BYZ-38-t0r" customClass="HomeViewController" customModule="_91_storyboard" customModuleProvider="target" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="y3c-jy-aDJ"/>
                        <viewControllerLayoutGuide type="bottom" id="wfy-db-euE"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="8bC-Xf-vdC">
                        <rect key="frame" x="0.0" y="0.0" width="768" height="1024"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="DYNAMIC PROJECTOR MOUNT" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="BOJ-TA-9NV">
                                <rect key="frame" x="0.0" y="72" width="768" height="44"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <color key="backgroundColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" weight="heavy" pointSize="25"/>
                                <color key="textColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="SETTINGS:" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="jCZ-Bz-6bb">
                                <rect key="frame" x="5" y="584" width="684" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" weight="heavy" pointSize="27"/>
                                <color key="textColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="maZ-R7-yPk">
                                <rect key="frame" x="0.0" y="211" width="768" height="49"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <state key="normal" title="Projector 1">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                                <connections>
                                    <segue destination="LE3-3s-081" kind="show" id="YdO-fK-lOp"/>
                                </connections>
                            </button>
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="4Rn-h9-ibP">
                                <rect key="frame" x="0.0" y="268" width="768" height="49"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <state key="normal" title="Projector 2">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                            </button>
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="V8g-ES-2a8">
                                <rect key="frame" x="0.0" y="325" width="768" height="49"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <state key="normal" title="Projector 3">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                            </button>
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="WbN-gJ-b04">
                                <rect key="frame" x="0.0" y="382" width="768" height="49"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <state key="normal" title="Projector 4">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                            </button>
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="Bfw-5u-gd4">
                                <rect key="frame" x="0.0" y="439" width="768" height="49"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <state key="normal" title="Projector 5">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                            </button>
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="KkA-Fy-ic0">
                                <rect key="frame" x="0.0" y="496" width="768" height="49"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <state key="normal" title="Projector 6">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                            </button>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="PROJECTORS:" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="OYO-vL-fem">
                                <rect key="frame" x="5" y="169" width="228" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" weight="heavy" pointSize="27"/>
                                <color key="textColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="mMF-UF-ACr">
                                <rect key="frame" x="0.0" y="626" width="768" height="50"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <state key="normal" title="Preset Settings">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                                <connections>
                                    <segue destination="28H-As-JxX" kind="show" id="qwR-td-ePQ"/>
                                </connections>
                            </button>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="HOME" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="CAJ-iE-AsN">
                                <rect key="frame" x="42" y="127" width="684" height="34"/>
                                <autoresizingMask key="autoresizingMask"/>
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" weight="heavy" pointSize="27"/>
                                <color key="textColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                        </subviews>
                        <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                    </view>
                    <navigationItem key="navigationItem" id="Nde-W4-pzp"/>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="dkx-z0-nzr" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="1151.5625" y="386.71875"/>
        </scene>
        <!--Proj1 View Controller-->
        <scene sceneID="xxK-EK-r49">
            <objects>
                <viewController id="LE3-3s-081" customClass="Proj1ViewController" customModule="_91_storyboard" customModuleProvider="target" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="xZQ-uK-oQL" userLabel="Dynamic Projector Mount"/>
                        <viewControllerLayoutGuide type="bottom" id="dEi-3p-cvN"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="XSg-qP-zSh">
                        <rect key="frame" x="0.0" y="0.0" width="768" height="1024"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <view contentMode="scaleToFill" fixedFrame="YES" placeholderIntrinsicWidth="768" placeholderIntrinsicHeight="1024" translatesAutoresizingMaskIntoConstraints="NO" id="KZO-Ho-izn">
                                <rect key="frame" x="0.0" y="0.0" width="768" height="1024"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES" flexibleMinY="YES" heightSizable="YES" flexibleMaxY="YES"/>
                                <subviews>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="0.0 Deg" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="29B-H5-e6Y">
                                        <rect key="frame" x="291" y="499" width="194" height="45"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="30"/>
                                        <color key="textColor" red="0.0" green="0.47843137250000001" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="Hhe-Ux-bEL">
                                        <rect key="frame" x="303" y="632" width="170" height="55"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="0.0" green="0.47843137250000001" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" name="Arial-BoldMT" family="Arial" pointSize="30"/>
                                        <state key="normal" title="TILT">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="tiltDidSend:" destination="LE3-3s-081" eventType="touchUpInside" id="0yf-rf-lnT"/>
                                        </connections>
                                    </button>
                                    <stepper opaque="NO" contentMode="scaleToFill" horizontalHuggingPriority="750" verticalHuggingPriority="750" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" minimumValue="-45" maximumValue="45" translatesAutoresizingMaskIntoConstraints="NO" id="O2B-H6-dTS">
                                        <rect key="frame" x="337" y="594" width="94" height="29"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" flexibleMaxX="YES"/>
                                        <connections>
                                            <action selector="tiltStepperAction:" destination="LE3-3s-081" eventType="valueChanged" id="eco-5v-6dy"/>
                                        </connections>
                                    </stepper>
                                    <segmentedControl opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="left" contentVerticalAlignment="top" segmentControlStyle="bordered" selectedSegmentIndex="0" translatesAutoresizingMaskIntoConstraints="NO" id="71R-1p-qmv">
                                        <rect key="frame" x="60" y="816" width="675" height="29"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <segments>
                                            <segment title="London"/>
                                            <segment title="New York"/>
                                            <segment title="Vancouver"/>
                                        </segments>
                                        <color key="tintColor" red="0.54512019230769226" green="0.37640530731523375" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <connections>
                                            <action selector="segmentedControlAction:" destination="LE3-3s-081" eventType="valueChanged" id="CeZ-vn-4BT"/>
                                        </connections>
                                    </segmentedControl>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="1fF-wJ-NJy">
                                        <rect key="frame" x="390" y="871" width="267" height="45"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="1" green="0.62745098039215685" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" name="Arial-BoldMT" family="Arial" pointSize="25"/>
                                        <state key="normal" title="APPLY">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="applyButtonPressed:" destination="LE3-3s-081" eventType="touchUpInside" id="60U-Ct-R7I"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="tOB-Eh-AKA">
                                        <rect key="frame" x="111" y="871" width="271" height="45"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="1" green="0.62745098039215685" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" name="Arial-BoldMT" family="Arial" pointSize="25"/>
                                        <state key="normal" title="SAVE">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="saveButtonPressed:" destination="LE3-3s-081" eventType="touchUpInside" id="gAs-dg-58e"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="YJ2-Re-IaO">
                                        <rect key="frame" x="212" y="632" width="83" height="55"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="0.0" green="0.47843137250000001" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" name="Arial-BoldMT" family="Arial" pointSize="30"/>
                                        <state key="normal" title="-1">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="tiltMinusOne:" destination="LE3-3s-081" eventType="touchUpInside" id="5SQ-VE-Mb2"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="wUK-JA-h0q">
                                        <rect key="frame" x="481" y="632" width="87" height="55"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="0.0" green="0.47843137250000001" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" name="Arial-BoldMT" family="Arial" pointSize="30"/>
                                        <state key="normal" title="+1">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="tiltPlusOne:" destination="LE3-3s-081" eventType="touchUpInside" id="mJt-Of-JL3"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="bu3-mD-QCG">
                                        <rect key="frame" x="576" y="631" width="87" height="55"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="0.0" green="0.47843137250000001" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="30"/>
                                        <state key="normal" title="&gt;">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="FFTiltTouchDownInside:" destination="LE3-3s-081" eventType="touchDown" id="u6T-mT-J1z"/>
                                            <action selector="FFTiltTouchDownOutside:" destination="LE3-3s-081" eventType="touchUpInside" id="oqg-QX-PVl"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="HaL-eC-BhD">
                                        <rect key="frame" x="117" y="632" width="87" height="55"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="0.0" green="0.47843137250000001" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="30"/>
                                        <state key="normal" title="&lt;">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="FRTiltTouchDownInside:" destination="LE3-3s-081" eventType="touchDown" id="ayg-eI-1cJ"/>
                                            <action selector="FRTiltTouchDownOutside:" destination="LE3-3s-081" eventType="touchUpInside" id="6LB-iC-And"/>
                                        </connections>
                                    </button>
                                    <slider opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" minValue="-120" maxValue="120" translatesAutoresizingMaskIntoConstraints="NO" id="0CF-9P-H1f">
                                        <rect key="frame" x="22" y="556" width="725" height="31"/>
                                        <autoresizingMask key="autoresizingMask" widthSizable="YES"/>
                                        <connections>
                                            <action selector="tiltSliderAction:" destination="LE3-3s-081" eventType="valueChanged" id="pYe-FS-fu2"/>
                                        </connections>
                                    </slider>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Input Test" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="Tx5-g1-LsB">
                                        <rect key="frame" x="307" y="993" width="150" height="23"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" flexibleMaxX="YES"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="20"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="xHQ-ub-aAi">
                                        <rect key="frame" x="110.5" y="924" width="546" height="45"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="1" green="0.62745098040000002" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" name="Arial-BoldMT" family="Arial" pointSize="25"/>
                                        <state key="normal" title="DRAW ">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <segue destination="dxY-Nc-EiI" kind="show" id="DRw-gH-N9a"/>
                                        </connections>
                                    </button>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Pan:" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="tLN-o0-ba0">
                                        <rect key="frame" x="28" y="177" width="60" height="34"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                        <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" type="system" weight="semibold" pointSize="27"/>
                                        <color key="textColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Tilt:" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="eCL-3P-78v">
                                        <rect key="frame" x="28" y="462" width="53" height="34"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                        <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" type="system" weight="semibold" pointSize="27"/>
                                        <color key="textColor" red="0.0" green="0.47843137250000001" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="hfT-VF-lH6">
                                        <rect key="frame" x="249" y="91" width="65" height="65"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                        <fontDescription key="fontDescription" name="Arial-BoldMT" family="Arial" pointSize="29"/>
                                        <state key="normal" backgroundImage="offIcon">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="offButtonPressed:" destination="LE3-3s-081" eventType="touchUpInside" id="OyU-DP-NZ4"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" adjustsImageWhenDisabled="NO" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="BP2-CC-UZY">
                                        <rect key="frame" x="353" y="91" width="65" height="65"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                        <fontDescription key="fontDescription" name="ArialMT" family="Arial" pointSize="22"/>
                                        <color key="tintColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                        <state key="normal" backgroundImage="bt_3">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="connectToArduino:" destination="LE3-3s-081" eventType="touchUpInside" id="qIE-ag-MPj"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="Epa-h2-xhW">
                                        <rect key="frame" x="454" y="91" width="65" height="65"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                        <state key="normal" backgroundImage="stop"/>
                                        <connections>
                                            <action selector="stopAllAction:" destination="LE3-3s-081" eventType="touchUpInside" id="8Uj-Em-IPD"/>
                                        </connections>
                                    </button>
                                    <slider opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" value="1" minValue="-180" maxValue="180" translatesAutoresizingMaskIntoConstraints="NO" id="nfY-an-1EC">
                                        <rect key="frame" x="22" y="264" width="725" height="31"/>
                                        <autoresizingMask key="autoresizingMask" widthSizable="YES"/>
                                        <color key="tintColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <connections>
                                            <action selector="panSliderAction:" destination="LE3-3s-081" eventType="valueChanged" id="RtT-lJ-FpD"/>
                                        </connections>
                                    </slider>
                                    <stepper opaque="NO" contentMode="scaleToFill" horizontalHuggingPriority="750" verticalHuggingPriority="750" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" minimumValue="-180" maximumValue="180" stepValue="0.10000000000000001" translatesAutoresizingMaskIntoConstraints="NO" id="MMu-oA-8nn">
                                        <rect key="frame" x="337" y="302" width="94" height="29"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" flexibleMaxX="YES"/>
                                        <color key="tintColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <connections>
                                            <action selector="panStepperAction:" destination="LE3-3s-081" eventType="valueChanged" id="1VL-bK-BZO"/>
                                        </connections>
                                    </stepper>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="0.0 Deg" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="ek7-Zi-U2A">
                                        <rect key="frame" x="291" y="210" width="194" height="46"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" flexibleMaxX="YES"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="30"/>
                                        <color key="textColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="SEu-0y-it9">
                                        <rect key="frame" x="301" y="340" width="170" height="55"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" name="Arial-BoldMT" family="Arial" pointSize="30"/>
                                        <color key="tintColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <state key="normal" title="ROTATE"/>
                                        <connections>
                                            <action selector="panDidSend:" destination="LE3-3s-081" eventType="touchUpInside" id="KV4-cq-RCT"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="rJd-34-GEz">
                                        <rect key="frame" x="479" y="340" width="87" height="55"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" name="Arial-BoldMT" family="Arial" pointSize="30"/>
                                        <state key="normal" title="+1">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="panPlusOne:" destination="LE3-3s-081" eventType="touchUpInside" id="r6G-cc-p0i"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="n4y-oc-btQ">
                                        <rect key="frame" x="574" y="339" width="87" height="56"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="30"/>
                                        <state key="normal" title="&gt;">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="FF1TouchDownInside:" destination="LE3-3s-081" eventType="touchDown" id="6of-c8-Mhh"/>
                                            <action selector="FF1TouchDownOutside:" destination="LE3-3s-081" eventType="touchUpInside" id="DPk-NP-H0d"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="SHk-P1-Z1n">
                                        <rect key="frame" x="115" y="340" width="87" height="55"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="30"/>
                                        <state key="normal" title="&lt;">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="FR1TouchDownInside:" destination="LE3-3s-081" eventType="touchDown" id="LTS-hz-QwT"/>
                                            <action selector="FR1TouchDownOutside:" destination="LE3-3s-081" eventType="touchUpInside" id="CtY-4O-Xes"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="fwd-1S-OwH">
                                        <rect key="frame" x="210" y="339" width="83" height="56"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" name="Arial-BoldMT" family="Arial" pointSize="30"/>
                                        <state key="normal" title="-1">
                                            <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="panMinusOne:" destination="LE3-3s-081" eventType="touchUpInside" id="2v6-9u-8bW"/>
                                        </connections>
                                    </button>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Presets:" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="0de-hh-Isu">
                                        <rect key="frame" x="28" y="761" width="684" height="34"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                        <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <fontDescription key="fontDescription" type="system" weight="semibold" pointSize="27"/>
                                        <color key="textColor" red="1" green="0.62745098040000002" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Initialize" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="8Xm-eq-ZfB">
                                        <rect key="frame" x="249" y="164" width="65" height="21"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                        <color key="textColor" white="0.66666666666666663" alpha="1" colorSpace="calibratedWhite"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Connect" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="cgs-2T-SOa">
                                        <rect key="frame" x="353" y="164" width="65" height="21"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                        <color key="textColor" white="0.66666666666666663" alpha="1" colorSpace="calibratedWhite"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Stop ALL" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="dAW-rq-WkJ">
                                        <rect key="frame" x="454" y="164" width="70" height="21"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                        <color key="textColor" white="0.66666666666666663" alpha="1" colorSpace="calibratedWhite"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="EvO-5I-SM9">
                                        <rect key="frame" x="610" y="446" width="79" height="50"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                        <state key="normal" title="Button"/>
                                        <connections>
                                            <action selector="fiftyOne:" destination="LE3-3s-081" eventType="touchUpInside" id="OJb-Os-DE5"/>
                                        </connections>
                                    </button>
                                </subviews>
                            </view>
                        </subviews>
                        <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                    </view>
                    <connections>
                        <outlet property="btConnectButtonOutlet" destination="BP2-CC-UZY" id="Oie-9u-Mt4"/>
                        <outlet property="panLabel" destination="ek7-Zi-U2A" id="STe-KH-hZH"/>
                        <outlet property="panSlider" destination="nfY-an-1EC" id="olU-jP-udF"/>
                        <outlet property="panStepper" destination="MMu-oA-8nn" id="FBt-wz-frK"/>
                        <outlet property="segmentedControl" destination="71R-1p-qmv" id="K5C-aE-vtC"/>
                        <outlet property="testLabel" destination="Tx5-g1-LsB" id="En3-mr-lN6"/>
                        <outlet property="tiltLabel" destination="29B-H5-e6Y" id="egO-md-hed"/>
                        <outlet property="tiltSlider" destination="0CF-9P-H1f" id="vb5-6Q-2IU"/>
                        <outlet property="tiltStepper" destination="O2B-H6-dTS" id="yWi-GE-9TX"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="MIG-Ln-FZ6" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="2069.53125" y="-393.1640625"/>
        </scene>
        <!--Proj1 Draw View Controller-->
        <scene sceneID="6He-8o-Pa9">
            <objects>
                <viewController id="dxY-Nc-EiI" customClass="Proj1DrawViewController" customModule="_91_storyboard" customModuleProvider="target" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="IKt-6X-cMz"/>
                        <viewControllerLayoutGuide type="bottom" id="v49-pP-ubD"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="WVH-JO-Dpy">
                        <rect key="frame" x="0.0" y="0.0" width="768" height="1024"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="PROJECTOR 1:" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="k3V-OY-Gg7">
                                <rect key="frame" x="9" y="83" width="684" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" weight="heavy" pointSize="27"/>
                                <color key="textColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <segmentedControl opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="left" contentVerticalAlignment="top" segmentControlStyle="plain" selectedSegmentIndex="0" translatesAutoresizingMaskIntoConstraints="NO" id="TJO-R3-BWS">
                                <rect key="frame" x="20" y="221" width="728" height="29"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <segments>
                                    <segment title="Square"/>
                                    <segment title="Star"/>
                                    <segment title="Hexigon"/>
                                    <segment title="Circle"/>
                                </segments>
                                <color key="tintColor" red="0.54512019229999997" green="0.37640530729999999" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <connections>
                                    <action selector="drawSegmentedControlAction:" destination="dxY-Nc-EiI" eventType="valueChanged" id="yUY-SL-YQZ"/>
                                </connections>
                            </segmentedControl>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Presets:" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="1cD-JY-mMl">
                                <rect key="frame" x="20" y="168" width="684" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" weight="semibold" pointSize="27"/>
                                <color key="textColor" red="1" green="0.62745098040000002" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="bOR-wR-JPd">
                                <rect key="frame" x="20" y="280" width="728" height="44"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="1" green="0.62745098040000002" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" name="Arial-BoldMT" family="Arial" pointSize="24"/>
                                <size key="titleShadowOffset" width="0.0" height="55"/>
                                <state key="normal" title="DRAW SHAPE">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                                <connections>
                                    <action selector="DrawShapeDidPress:" destination="dxY-Nc-EiI" eventType="touchUpInside" id="PaA-zq-YdN"/>
                                </connections>
                            </button>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Draw:" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="ROj-wk-2UD">
                                <rect key="frame" x="20" y="400" width="684" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" weight="semibold" pointSize="27"/>
                                <color key="textColor" red="1" green="0.62745098040000002" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                        </subviews>
                        <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                    </view>
                    <connections>
                        <outlet property="drawSegmentedControlOutlet" destination="TJO-R3-BWS" id="vkd-I1-mhp"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="02q-h0-s3p" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="2990" y="-393"/>
        </scene>
        <!--Settings View Controller-->
        <scene sceneID="AQA-la-GsI">
            <objects>
                <viewController id="28H-As-JxX" customClass="SettingsViewController" customModule="_91_storyboard" customModuleProvider="target" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="Hiq-gi-3J0"/>
                        <viewControllerLayoutGuide type="bottom" id="kwq-6S-gVt"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="PpO-CV-DCx">
                        <rect key="frame" x="0.0" y="0.0" width="768" height="1024"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="SETTINGS:" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="uNV-Ip-fwT">
                                <rect key="frame" x="20" y="79" width="684" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" weight="heavy" pointSize="27"/>
                                <color key="textColor" red="1" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="PRESET NAMES" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="sJ2-6N-vIn">
                                <rect key="frame" x="0.0" y="166" width="768" height="28"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" weight="heavy" pointSize="22"/>
                                <color key="textColor" red="0.33333333333333331" green="0.33333333333333331" blue="0.33333333333333331" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Preset 1:" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="W8U-nL-hno">
                                <rect key="frame" x="20" y="270" width="137" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" weight="heavy" pointSize="22"/>
                                <color key="textColor" red="0.33333333333333331" green="0.33333333333333331" blue="0.33333333333333331" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Preset 2:" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="fbR-kL-89w">
                                <rect key="frame" x="20" y="312" width="137" height="28"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" weight="heavy" pointSize="22"/>
                                <color key="textColor" red="0.33333333333333331" green="0.33333333333333331" blue="0.33333333333333331" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Preset 3:" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="qFm-hc-jYM">
                                <rect key="frame" x="20" y="348" width="137" height="28"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES"/>
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" weight="heavy" pointSize="22"/>
                                <color key="textColor" red="0.33333333333333331" green="0.33333333333333331" blue="0.33333333333333331" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="XZt-mn-JBT">
                                <rect key="frame" x="633" y="311" width="105" height="30"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES"/>
                                <color key="backgroundColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <state key="normal" title="Save">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                                <connections>
                                    <action selector="saveTwo:" destination="28H-As-JxX" eventType="touchUpInside" id="7ZO-an-l24"/>
                                </connections>
                            </button>
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="gFC-Ja-hhQ">
                                <rect key="frame" x="633" y="347" width="105" height="30"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES"/>
                                <color key="backgroundColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <state key="normal" title="Save">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                                <connections>
                                    <action selector="saveThree:" destination="28H-As-JxX" eventType="touchUpInside" id="ydF-p4-xRE"/>
                                </connections>
                            </button>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Preset 1" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="TY8-ro-8sA">
                                <rect key="frame" x="439" y="270" width="173" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                <color key="textColor" red="0.0" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Preset 2" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="hdB-vu-Sds">
                                <rect key="frame" x="439" y="309" width="173" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                <color key="textColor" red="0.0" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Preset 3" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="HLQ-Du-VfD">
                                <rect key="frame" x="439" y="345" width="173" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                <color key="textColor" red="0.0" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <textField opaque="NO" clipsSubviews="YES" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="Enter Desired Name Here" textAlignment="natural" minimumFontSize="17" clearButtonMode="whileEditing" translatesAutoresizingMaskIntoConstraints="NO" id="fJ6-Fe-5Nf">
                                <rect key="frame" x="165" y="272" width="255" height="30"/>
                                <autoresizingMask key="autoresizingMask" widthSizable="YES"/>
                                <nil key="textColor"/>
                                <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                <textInputTraits key="textInputTraits" autocapitalizationType="words"/>
                            </textField>
                            <textField opaque="NO" clipsSubviews="YES" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="Enter Desired Name Here" textAlignment="natural" minimumFontSize="17" clearButtonMode="whileEditing" translatesAutoresizingMaskIntoConstraints="NO" id="mKg-hN-yi8">
                                <rect key="frame" x="165" y="311" width="255" height="30"/>
                                <autoresizingMask key="autoresizingMask" widthSizable="YES"/>
                                <nil key="textColor"/>
                                <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                <textInputTraits key="textInputTraits" autocapitalizationType="words"/>
                            </textField>
                            <textField opaque="NO" clipsSubviews="YES" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="Enter Desired Name Here" textAlignment="natural" minimumFontSize="17" clearButtonMode="whileEditing" translatesAutoresizingMaskIntoConstraints="NO" id="3Fo-qK-iVk">
                                <rect key="frame" x="165" y="347" width="255" height="30"/>
                                <autoresizingMask key="autoresizingMask" widthSizable="YES"/>
                                <nil key="textColor"/>
                                <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                <textInputTraits key="textInputTraits" autocapitalizationType="words"/>
                            </textField>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Current Name" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="oOv-fG-uD3">
                                <rect key="frame" x="423" y="229" width="205" height="21"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                <color key="textColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Enter New Name" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="T3V-5T-Eab">
                                <rect key="frame" x="165" y="229" width="205" height="21"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                <color key="textColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="i73-F8-HrR">
                                <rect key="frame" x="20" y="414" width="728" height="41"/>
                                <autoresizingMask key="autoresizingMask" widthSizable="YES"/>
                                <color key="backgroundColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <fontDescription key="fontDescription" type="system" pointSize="21"/>
                                <state key="normal" title="Save">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                                <connections>
                                    <action selector="largeSaveButton:" destination="28H-As-JxX" eventType="touchUpInside" id="ITh-lN-CwF"/>
                                </connections>
                            </button>
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="9Lg-5O-e5v">
                                <rect key="frame" x="633" y="273" width="105" height="30"/>
                                <autoresizingMask key="autoresizingMask" flexibleMinX="YES"/>
                                <color key="backgroundColor" red="0.66666666666666663" green="0.66666666666666663" blue="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <state key="normal" title="Save">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                                <connections>
                                    <action selector="saveOne:" destination="28H-As-JxX" eventType="touchUpInside" id="wB5-Y5-CFO"/>
                                </connections>
                            </button>
                        </subviews>
                        <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                    </view>
                    <connections>
                        <outlet property="presetOneLabel" destination="TY8-ro-8sA" id="llt-Xw-h4v"/>
                        <outlet property="presetOneTextField" destination="fJ6-Fe-5Nf" id="th3-om-bRj"/>
                        <outlet property="presetThreeLabel" destination="HLQ-Du-VfD" id="jqL-6c-6BE"/>
                        <outlet property="presetThreeTextField" destination="3Fo-qK-iVk" id="1Dw-SZ-bo8"/>
                        <outlet property="presetTwoLabel" destination="hdB-vu-Sds" id="RQM-v9-rMt"/>
                        <outlet property="presetTwoTextField" destination="mKg-hN-yi8" id="s2V-eF-q4f"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="9t6-vW-CMz" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="2070" y="739"/>
        </scene>
        <!--Navigation Controller-->
        <scene sceneID="59B-8S-cTX">
            <objects>
                <navigationController automaticallyAdjustsScrollViewInsets="NO" id="0f7-SY-Wjg" sceneMemberID="viewController">
                    <toolbarItems/>
                    <navigationBar key="navigationBar" contentMode="scaleToFill" id="CzN-o1-ZtS">
                        <rect key="frame" x="0.0" y="0.0" width="320" height="44"/>
                        <autoresizingMask key="autoresizingMask"/>
                    </navigationBar>
                    <nil name="viewControllers"/>
                    <connections>
                        <segue destination="BYZ-38-t0r" kind="relationship" relationship="rootViewController" id="OfJ-9P-LO0"/>
                    </connections>
                </navigationController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="wsK-ei-aF4" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="558" y="-689"/>
        </scene>
    </scenes>
    <resources>
        <image name="bt_3" width="300" height="300"/>
        <image name="offIcon" width="1000" height="1000"/>
        <image name="stop" width="1000" height="1000"/>
    </resources>
</document>
