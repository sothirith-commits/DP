.class Lcom/cocos/remoterender/client/lib/HardwareBufferPatch;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HardwareBufferPatch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native bindHardwareBufferReturnEGLImage(ILandroid/hardware/HardwareBuffer;)J
.end method

.method public static native destroyEGLImage(J)V
.end method

.method public static native insertAcquireSyncFence(I)Z
.end method

.method public static native insertReleaseSyncFence()I
.end method
