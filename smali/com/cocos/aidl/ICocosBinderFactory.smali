.class public interface abstract Lcom/cocos/aidl/ICocosBinderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cocos/aidl/ICocosRemoteRender;
.end method

.method public abstract destroyInstance(Lcom/cocos/aidl/ICocosRemoteRender;)V
.end method

.method public abstract isValid()Z
.end method

.method public abstract returnToScript()V
.end method

.method public abstract sendToScript(Ljava/lang/String;Ljava/lang/String;[BJ)V
.end method

.method public abstract setClientOffscreenMode(Z)V
.end method

.method public abstract setFactoryCallback(Lcom/cocos/aidl/ICocosBinderFactoryCallback;)V
.end method
