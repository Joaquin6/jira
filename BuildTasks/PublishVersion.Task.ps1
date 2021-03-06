task PublishVersion {
    [version] $sourceVersion = (Get-Metadata -Path $manifestPath -PropertyName 'ModuleVersion')
    "##vso[build.updatebuildnumber]$sourceVersion.$env:Build_BuildID"

    # Do the same for appveyor
    # https://www.appveyor.com/docs/build-worker-api/#update-build-details
}
