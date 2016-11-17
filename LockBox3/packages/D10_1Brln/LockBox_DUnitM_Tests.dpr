program LockBox_DUnitM_Tests;
// This module was dynamically generated by the DUnitM GUI Runner Wizard.

uses
  Forms,
  SBD.Generics in '..\..\unit-tests\dunit-m\run\SBD.Generics.pas',
  SBD.Messages in '..\..\unit-tests\dunit-m\run\SBD.Messages.pas',
  SBD.Messages.Solution in '..\..\unit-tests\dunit-m\run\SBD.Messages.Solution.pas',
  DUnitM.UnitTestFramework in '..\..\unit-tests\dunit-m\run\DUnitM.UnitTestFramework.pas',
  DUnitM.UnitTestFramework.Solution in '..\..\unit-tests\dunit-m\run\DUnitM.UnitTestFramework.Solution.pas',
  DUnitM.ViewModel_Tree in '..\..\unit-tests\dunit-m\run\DUnitM.ViewModel_Tree.pas',
  DUnitM.ViewModel_VCLForms in '..\..\unit-tests\dunit-m\run\DUnitM.ViewModel_VCLForms.pas',
  DUnitM.VirtualTrees in '..\..\unit-tests\dunit-m\external-libraries\VirtualTreeView\Source\DUnitM.VirtualTrees.pas',
  DUnitM.VTAccessibility in '..\..\unit-tests\dunit-m\external-libraries\VirtualTreeView\Source\DUnitM.VTAccessibility.pas',
  DUnitM.VTAccessibilityFactory in '..\..\unit-tests\dunit-m\external-libraries\VirtualTreeView\Source\DUnitM.VTAccessibilityFactory.pas',
  SBD.ServiceProvider.Internal in '..\..\unit-tests\dunit-m\external-libraries\sbd-dependency-injection\SBD.ServiceProvider.Internal.pas',
  SBD.ServiceProvider in '..\..\unit-tests\dunit-m\external-libraries\sbd-dependency-injection\SBD.ServiceProvider.pas',
  DUnitM.dmVirtualTreeNonVisualSupport in '..\..\unit-tests\dunit-m\run\DUnitM.dmVirtualTreeNonVisualSupport.pas' {dmVirtualTreeNonVisualSupport: TDataModule},
  DunitM.GUIRunnerForm in '..\..\unit-tests\dunit-m\run\DunitM.GUIRunnerForm.pas' {mfmGUIRunner},
  DUnitM.TestSuiteDxVirtualTree in '..\..\unit-tests\dunit-m\run\DUnitM.TestSuiteDxVirtualTree.pas' {TestSuiteVirtualTree: TFrame},
  DUnitM.MemoryMonitor in '..\..\unit-tests\dunit-m\run\DUnitM.MemoryMonitor.pas',
  DUnitM.MemoryMonitor.Solution in '..\..\unit-tests\dunit-m\run\DUnitM.MemoryMonitor.Solution.pas',
  DUnitM.BaseExecutive in '..\..\unit-tests\dunit-m\run\DUnitM.BaseExecutive.pas',
  DUnitM.Executive in '..\..\unit-tests\dunit-m\run\DUnitM.Executive.pas',
  SBD.Environment in '..\..\unit-tests\dunit-m\run\SBD.Environment.pas',
  SBD.Utils.XML2 in '..\..\unit-tests\dunit-m\run\SBD.Utils.XML2.pas',
  DUnitM.NUnit.Logger.Solution in '..\..\unit-tests\dunit-m\run\DUnitM.NUnit.Logger.Solution.pas',
  DUnitM.NUnit.LoggerUI.Solution in '..\..\unit-tests\dunit-m\run\DUnitM.NUnit.LoggerUI.Solution.pas',
  DUnitM.NUnit in '..\..\unit-tests\dunit-m\run\DUnitM.NUnit.pas',
  DUnitM.NUnit25.ResultsLog.Solution in '..\..\unit-tests\dunit-m\run\DUnitM.NUnit25.ResultsLog.Solution.pas',
  DUnitM.RttiUtils in '..\..\unit-tests\dunit-m\run\DUnitM.RttiUtils.pas',
  DUnitM.StringUtils in '..\..\unit-tests\dunit-m\run\DUnitM.StringUtils.pas',
  DUnitM.XMLWriter in '..\..\unit-tests\dunit-m\run\DUnitM.XMLWriter.pas',
  DUnitM.XMLWriter.Solution in '..\..\unit-tests\dunit-m\run\DUnitM.XMLWriter.Solution.pas',
  DUnitM.TestCase in '..\..\unit-tests\dunit-m\run\DUnitM.TestCase.pas',
  DUnitM.TestCaseParameters in '..\..\unit-tests\dunit-m\run\DUnitM.TestCaseParameters.pas',
  DUnitM.TestCaseRound in '..\..\unit-tests\dunit-m\run\DUnitM.TestCaseRound.pas',
  DUnitM.TestNode in '..\..\unit-tests\dunit-m\run\DUnitM.TestNode.pas',
  DUnitM.TestProcedure in '..\..\unit-tests\dunit-m\run\DUnitM.TestProcedure.pas',
  DUnitM.Assertion in '..\..\unit-tests\dunit-m\run\DUnitM.Assertion.pas',
  DUnitM.DDExtensions in '..\..\unit-tests\dunit-m\run\DUnitM.DDExtensions.pas',
  DUnitM.Fixture in '..\..\unit-tests\dunit-m\run\DUnitM.Fixture.pas',
  DUnitM.RunInstance in '..\..\unit-tests\dunit-m\run\DUnitM.RunInstance.pas',
  DUnitX.ConsoleWriter.Base in '..\..\unit-tests\dunit-m\run\DUnitX.ConsoleWriter.Base.pas',
  DUnitX.Windows.Console in '..\..\unit-tests\dunit-m\run\DUnitX.Windows.Console.pas',
  uLockBox_TestCases in '..\..\unit-tests\dunit-m\test-suite\uLockBox_TestCases.pas',
  uLockBox_CipherTestCases in '..\..\unit-tests\dunit-m\test-suite\uLockBox_CipherTestCases.pas',
  uLockBox_Hashes in '..\..\unit-tests\dunit-m\test-suite\uLockBox_Hashes.pas',
  uLockBox_HugeCardinalTestCases in '..\..\unit-tests\dunit-m\test-suite\uLockBox_HugeCardinalTestCases.pas',
  uLockBox_OpenSSLTestCases in '..\..\unit-tests\dunit-m\test-suite\uLockBox_OpenSSLTestCases.pas',
  uLockBox_RSA_TestCases in '..\..\unit-tests\dunit-m\test-suite\uLockBox_RSA_TestCases.pas',
  uLockBox_Signatory_TestCases in '..\..\unit-tests\dunit-m\test-suite\uLockBox_Signatory_TestCases.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'TP Lockbox 3 Unit Test Suite';
  Application.CreateForm(TmfmGUIRunner, mfmGUIRunner);
  Application.ShowHint := True;
  Application.Run;
end.
