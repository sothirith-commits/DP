.class public interface abstract Lcom/cocos/aidl/ICocosRemoteRender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract insertReleaseSyncFence(Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setCallback(Lcom/cocos/aidl/ICocosRemoteRenderCallback;)V
.end method

.method public abstract setRealClientId(I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract updateClientWindowSize(II)V
.end method
