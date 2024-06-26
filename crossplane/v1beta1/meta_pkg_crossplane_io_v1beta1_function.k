"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema Function:
    """
    A Function is the description of a Crossplane Function package.

    Attributes
    ----------
    apiVersion : str, default is "meta.pkg.crossplane.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "Function", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : MetaPkgCrossplaneIoV1beta1FunctionSpec, default is Undefined, required
        spec
    """


    apiVersion: "meta.pkg.crossplane.io/v1beta1" = "meta.pkg.crossplane.io/v1beta1"

    kind: "Function" = "Function"

    metadata?: v1.ObjectMeta

    spec: MetaPkgCrossplaneIoV1beta1FunctionSpec


schema MetaPkgCrossplaneIoV1beta1FunctionSpec:
    """
    FunctionSpec specifies the configuration of a Function.

    Attributes
    ----------
    crossplane : MetaPkgCrossplaneIoV1beta1FunctionSpecCrossplane, default is Undefined, optional
        crossplane
    dependsOn : [MetaPkgCrossplaneIoV1beta1FunctionSpecDependsOnItems0], default is Undefined, optional
        Dependencies on other packages.
    image : str, default is Undefined, optional
        Image is the packaged Function image.
    """


    crossplane?: MetaPkgCrossplaneIoV1beta1FunctionSpecCrossplane

    dependsOn?: [MetaPkgCrossplaneIoV1beta1FunctionSpecDependsOnItems0]

    image?: str


schema MetaPkgCrossplaneIoV1beta1FunctionSpecCrossplane:
    """
    Semantic version constraints of Crossplane that package is compatible with.

    Attributes
    ----------
    version : str, default is Undefined, required
        Semantic version constraints of Crossplane that package is compatible with.
    """


    version: str


schema MetaPkgCrossplaneIoV1beta1FunctionSpecDependsOnItems0:
    """
    Dependency is a dependency on another package. One of Provider or Configuration may be supplied.

    Attributes
    ----------
    configuration : str, default is Undefined, optional
        Configuration is the name of a Configuration package image.
    function : str, default is Undefined, optional
        Function is the name of a Function package image.
    provider : str, default is Undefined, optional
        Provider is the name of a Provider package image.
    version : str, default is Undefined, required
        Version is the semantic version constraints of the dependency image.
    """


    configuration?: str

    function?: str

    provider?: str

    version: str


