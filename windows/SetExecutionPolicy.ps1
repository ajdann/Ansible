configuration SetExecutionPolicy {
    Node $AllNodes.Where({ $_.Role -eq 'WebServer' }) {
        Script SetExecutionPolicy {
            GetScript = { Return Get-ExecutionPolicy }
            TestScript = { return $false } # Always run the SetScript
            SetScript = {
                Set-ExecutionPolicy RemoteSigned -Force
            }
        }
    }
}

SetExecutionPolicy
