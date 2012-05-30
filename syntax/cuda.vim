" Vim syntax file
" Language:	CUDA (NVIDIA Compute Unified Device Architecture)
" Maintainer:	Timothy B. Terriberry <tterribe@users.sourceforge.net>
" Last Change:	2007 Oct 13

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  source <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
endif

" CUDA extentions
syn keyword cudaStorageClass	__device__ __global__ __host__
syn keyword cudaStorageClass	__constant__ __shared__
syn keyword cudaStorageClass	__inline__ __align__ __thread__
"syn keyword cudaStorageClass	__import__ __export__ __location__
syn keyword cudaStructure	template
syn keyword cudaType		char1 char2 char3 char4
syn keyword cudaType		uchar1 uchar2 uchar3 uchar4
syn keyword cudaType		short1 short2 short3 short4
syn keyword cudaType		ushort1 ushort2 ushort3 ushort4
syn keyword cudaType		int1 int2 int3 int4
syn keyword cudaType		uint1 uint2 uint3 uint4
syn keyword cudaType		long1 long2 long3 long4
syn keyword cudaType		ulong1 ulong2 ulong3 ulong4
syn keyword cudaType		float1 float2 float3 float4
syn keyword cudaType		ufloat1 ufloat2 ufloat3 ufloat4
syn keyword cudaType		dim3 texture textureReference
syn keyword cudaType		cudaError_t
syn keyword cudaType		cudaEvent_t
syn keyword cudaType		cudaGraphicsResource_t
syn keyword cudaType		cudaStream_t
syn keyword cudaType		cudaUUID_t
syn keyword cudaType		cudaDeviceProp
syn keyword cudaTaype		cudaMemcpyKind
syn keyword cudaType		cudaArray cudaChannelFormatKind
syn keyword cudaType		cudaChannelFormatDesc cudaTextureAddressMode
syn keyword cudaType		cudaTextureFilterMode cudaTextureReadMode
syn keyword cudaType		cudaTextureType1D cudaTextureType2D cudaTextureType3D
syn keyword cudaType		cudaTextureType1DLayered cudaTextureType2DLayered cudaTextureType3DLayered
syn keyword cudaVariable	gridDim blockIdx blockDim threadIdx
syn keyword cudaConstant	__DEVICE_EMULATION__
syn keyword cudaConstant	cudaSuccess
syn keyword cudaConstant	__syncthreads

"Many more errors are defined, but only these are listed in the maunal
syn keyword cudaConstant	cudaMemcpyHostToHost
syn keyword cudaConstant	cudaMemcpyHostToDevice
syn keyword cudaConstant	cudaMemcpyDeviceToHost
syn keyword cudaConstant	cudaMemcpyDeviceToDevice
syn keyword cudaConstant	cudaReadModeElementType
syn keyword cudaConstant	cudaReadModeNormalizedFloat
syn keyword cudaConstant	cudaFilterModePoint
syn keyword cudaConstant	cudaFilterModeLinear
syn keyword cudaConstant	cudaAddressModeClamp
syn keyword cudaConstant	cudaAddressModeWrap
syn keyword cudaConstant	cudaChannelFormatKindSigned
syn keyword cudaConstant	cudaChannelFormatKindUnsigned
syn keyword cudaConstant	cudaChannelFormatKindFloat

"CUDA error types
syn keyword cudaConstant	cudaErrorMemoryAllocation
syn keyword cudaConstant	cudaErrorMissingConfiguration
syn keyword cudaConstant	cudaErrorInitializationError	
syn keyword cudaConstant	cudaErrorLaunchFailure
syn keyword cudaConstant	cudaErrorPriorLaunchFailure
syn keyword cudaConstant	cudaErrorLaunchTimeout	
syn keyword cudaConstant	cudaErrorLaunchOutOfResources
syn keyword cudaConstant	cudaErrorInvalidDeviceFunction	
syn keyword cudaConstant	cudaErrorInvalidConfiguration	
syn keyword cudaConstant	cudaErrorInvalidDevice	
syn keyword cudaConstant	cudaErrorInvalidValue	
syn keyword cudaConstant	cudaErrorInvalidPitchValue	
syn keyword cudaConstant	cudaErrorInvalidSymbol	
syn keyword cudaConstant	cudaErrorMapBufferObjectFailed	
syn keyword cudaConstant	cudaErrorUnmapBufferObjectFailed	
syn keyword cudaConstant	cudaErrorInvalidHostPointer	
syn keyword cudaConstant	cudaErrorInvalidDevicePointer	
syn keyword cudaConstant	cudaErrorInvalidTexture	
syn keyword cudaConstant	cudaErrorInvalidTextureBinding	
syn keyword cudaConstant	cudaErrorInvalidChannelDescriptor	
syn keyword cudaConstant	cudaErrorInvalidMemcpyDirection	
syn keyword cudaConstant	cudaErrorAddressOfConstant	
syn keyword cudaConstant	cudaErrorTextureFetchFailed	
syn keyword cudaConstant	cudaErrorTextureNotBound	
syn keyword cudaConstant	cudaErrorSynchronizationError	
syn keyword cudaConstant	cudaErrorInvalidFilterSetting	
syn keyword cudaConstant	cudaErrorInvalidNormSetting	
syn keyword cudaConstant	cudaErrorMixedDeviceExecution	
syn keyword cudaConstant	cudaErrorCudartUnloading	
syn keyword cudaConstant	cudaErrorUnknown	
syn keyword cudaConstant	cudaErrorNotYetImplemented	
syn keyword cudaConstant	cudaErrorMemoryValueTooLarge	
syn keyword cudaConstant	cudaErrorInvalidResourceHandle	
syn keyword cudaConstant	cudaErrorNotReady	
syn keyword cudaConstant	cudaErrorInsufficientDriver	
syn keyword cudaConstant	cudaErrorSetOnActiveProcess	
syn keyword cudaConstant	cudaErrorInvalidSurface	
syn keyword cudaConstant	cudaErrorNoDevice	
syn keyword cudaConstant	cudaErrorECCUncorrectable	
syn keyword cudaConstant	cudaErrorSharedObjectSymbolNotFound	
syn keyword cudaConstant	cudaErrorSharedObjectInitFailed	
syn keyword cudaConstant	cudaErrorUnsupportedLimit	
syn keyword cudaConstant	cudaErrorDuplicateVariableName	
syn keyword cudaConstant	cudaErrorDuplicateTextureName	
syn keyword cudaConstant	cudaErrorDuplicateSurfaceName	
syn keyword cudaConstant	cudaErrorDevicesUnavailable	
syn keyword cudaConstant	cudaErrorInvalidKernelImage	
syn keyword cudaConstant	cudaErrorNoKernelImageForDevice	
syn keyword cudaConstant	cudaErrorIncompatibleDriverContext	
syn keyword cudaConstant	cudaErrorStartupFailure	
syn keyword cudaConstant	cudaErrorApiFailureBase

"CUDA function cache configurations
syn keyword cudaConstant	cudaFuncCachePreferNone
syn keyword cudaConstant	cudaFuncCachePreferShared
syn keyword cudaConstant	cudaFuncCachePreferL1

"CUDA Limits
syn keyword cudaConstant	cudaLimitStackSize
syn keyword cudaConstant	cudaLimitPrintfFifoSize
syn keyword cudaConstant	cudaLimitMallocHeapSize

"CUDA thread management functions
syn keyword cudaConstant	cudaThreadExit
syn keyword cudaConstant	cudaThreadGetCacheConfig
syn keyword cudaConstant	cudaThreadGetLimit
syn keyword cudaConstant	cudaThreadSetCacheConfig
syn keyword cudaConstant	cudaThreadSetLimit
syn keyword cudaConstant   	cudaThreadSynchronize

"CUDA error handling functions
syn keyword cudaConstant	cudaGetErrorString
syn keyword cudaConstant	cudaGetLastError
syn keyword cudaConstant	cudaPeekAtLastError

"CUDA device management functions
syn keyword cudaConstant	cudaChooseDevice
syn keyword cudaConstant	cudaGetDevice
syn keyword cudaConstant	cudaGetDeviceCount
syn keyword cudaConstant	cudaGetDeviceProperties
syn keyword cudaConstant	cudaSetDevice
syn keyword cudaConstant	cudaSetDeviceFlags
syn keyword cudaConstant	cudaSetValidDevices

"CUDA stream management functions
syn keyword cudaConstant	cudaStreamCreate
syn keyword cudaConstant	cudaStreamDestroy
syn keyword cudaConstant	cudaStreamQuery
syn keyword cudaConstant	cudaStreamSynchronize
syn keyword cudaConstant	cudaStreamWaitEvent

"CUDA event management functions
syn keyword cudaConstant	cudaEventCreate
syn keyword cudaConstant	cudaEventCreateWithFlags
syn keyword cudaConstant	cudaEventDestroy
syn keyword cudaConstant	cudaEventElapsedTime
syn keyword cudaConstant	cudaEventQuery
syn keyword cudaConstant	cudaEventRecord
syn keyword cudaConstant	cudaEventSynchronize

"CUDA execution control functions
syn keyword cudaConstant	cudaConfigureCall
syn keyword cudaConstant	cudaFuncGetAttributes
syn keyword cudaConstant	cudaFuncSetCacheConfig
syn keyword cudaConstant	cudaLaunch
syn keyword cudaConstant	cudaSetDoubleForDevice
syn keyword cudaConstant	cudaSetDoubleForHost
syn keyword cudaConstant	cudaSetupArgument

"CUDA memory management functions
syn keyword cudaConstant	cudaFree
syn keyword cudaConstant	cudaFreeArray
syn keyword cudaConstant	cudaFreeHost
syn keyword cudaConstant	cudaGetSymbolAddress
syn keyword cudaConstant	cudaGetSymbolSize
syn keyword cudaConstant	cudaHostAlloc
syn keyword cudaConstant	cudaHostGetDevicePointer
syn keyword cudaConstant	cudaHostGetFlags
syn keyword cudaConstant	cudaMalloc
syn keyword cudaConstant	cudaMalloc3D
syn keyword cudaConstant	cudaMalloc3DArray
syn keyword cudaConstant	cudaMallocArray
syn keyword cudaConstant	cudaMallocHost
syn keyword cudaConstant	cudaMallocPitch
syn keyword cudaConstant	cudaMemcpy
syn keyword cudaConstant	cudaMemcpy2D
syn keyword cudaConstant	cudaMemcpy2DArrayToArray
syn keyword cudaConstant	cudaMemcpy2DAsync
syn keyword cudaConstant	cudaMemcpy2DFromArray
syn keyword cudaConstant	cudaMemcpy2DFromArrayAsync
syn keyword cudaConstant	cudaMemcpy2DToArray
syn keyword cudaConstant	cudaMemcpy2DToArrayAsync
syn keyword cudaConstant	cudaMemcpy3D
syn keyword cudaConstant	cudaMemcpy3DAsync
syn keyword cudaConstant	cudaMemcpyArrayToArray
syn keyword cudaConstant	cudaMemcpyAsync
syn keyword cudaConstant	cudaMemcpyFromArray
syn keyword cudaConstant	cudaMemcpyFromArrayAsync
syn keyword cudaConstant	cudaMemcpyFromSymbol
syn keyword cudaConstant	cudaMemcpyFromSymbolAsync
syn keyword cudaConstant	cudaMemcpyToArray
syn keyword cudaConstant	cudaMemcpyToArrayAsync
syn keyword cudaConstant	cudaMemcpyToSymbol
syn keyword cudaConstant	cudaMemcpyToSymbolAsync
syn keyword cudaConstant	cudaMemGetInfo
syn keyword cudaConstant	cudaMemset
syn keyword cudaConstant	cudaMemset2D
syn keyword cudaConstant	cudaMemset2DAsync
syn keyword cudaConstant	cudaMemset3D
syn keyword cudaConstant	cudaMemset3DAsync 
syn keyword cudaConstant	cudaMemsetAsync 
syn keyword cudaConstant	make_cudaExtent 
syn keyword cudaConstant	make_cudaPitchedPtr 
syn keyword cudaConstant	make_cudaPos

"CUDA OpenGL interoperability functions
syn keyword cudaConstant	cudaGLSetGLDevice 
syn keyword cudaConstant	cudaGraphicsGLRegisterBuffer 
syn keyword cudaConstant	cudaGraphicsGLRegisterImage 
syn keyword cudaConstant	cudaWGLGetDevice

"CUDA Direct3D 9 interoperability functions
syn keyword cudaConstant	cudaD3D9GetDevice 
syn keyword cudaConstant	cudaD3D9GetDevices 
syn keyword cudaConstant	cudaD3D9GetDirect3DDevice 
syn keyword cudaConstant	cudaD3D9SetDirect3DDevice 
syn keyword cudaConstant	cudaGraphicsD3D9RegisterResource

"CUDA Direct3D 10 interoperability functions
syn keyword cudaConstant	cudaD3D10GetDevice 
syn keyword cudaConstant	cudaD3D10GetDevices 
syn keyword cudaConstant	cudaD3D10GetDirect3DDevice 
syn keyword cudaConstant	cudaD3D10SetDirect3DDevice 
syn keyword cudaConstant	cudaGraphicsD3D10RegisterResource

"CUDA Direct3D 11 interoperability functions
syn keyword cudaConstant	cudaD3D11GetDevice 
syn keyword cudaConstant	cudaD3D11GetDevices 
syn keyword cudaConstant	cudaD3D11GetDirect3DDevice 
syn keyword cudaConstant	cudaD3D11SetDirect3DDevice 
syn keyword cudaConstant	cudaGraphicsD3D11RegisterResource

"CUDA VDPAU interoperability functions
syn keyword cudaConstant	cudaGraphicsVDPAURegisterOutputSurface 
syn keyword cudaConstant	cudaGraphicsVDPAURegisterVideoSurface 
syn keyword cudaConstant	cudaVDPAUGetDevice 
syn keyword cudaConstant	cudaVDPAUSetVDPAUDevice

"CUDA graphics interoperability functions
syn keyword cudaConstant	cudaGraphicsMapResources 
syn keyword cudaConstant	cudaGraphicsResourceGetMappedPointer 
syn keyword cudaConstant	cudaGraphicsResourceSetMapFlags 
syn keyword cudaConstant	cudaGraphicsSubResourceGetMappedArray 
syn keyword cudaConstant	cudaGraphicsUnmapResources 
syn keyword cudaConstant	cudaGraphicsUnregisterResource

"CUDA texture reference management functions
syn keyword cudaConstant	cudaBindTexture 
syn keyword cudaConstant	cudaBindTexture2D 
syn keyword cudaConstant	cudaBindTextureToArray 
syn keyword cudaConstant	cudaCreateChannelDesc 
syn keyword cudaConstant	cudaGetChannelDesc 
syn keyword cudaConstant	cudaGetTextureAlignmentOffset 
syn keyword cudaConstant	cudaGetTextureReference 
syn keyword cudaConstant	cudaUnbindTexture

"CUDA surface reference management functions
syn keyword cudaConstant	cudaBindSurfaceToArray 
syn keyword cudaConstant	cudaGetSurfaceReference

"CUDA version management functions
syn keyword cudaConstant	cudaDriverGetVersion 
syn keyword cudaConstant	cudaRuntimeGetVersion


hi def link cudaStorageClass	StorageClass
hi def link cudaStructure	Structure
hi def link cudaType		Type
hi def link cudaVariable	Identifier
hi def link cudaConstant	Constant

let b:current_syntax = "cuda"

" vim: ts=8
