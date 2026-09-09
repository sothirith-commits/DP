.class public interface abstract Lcom/incall/serversdk/config/IConfigListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/config/IConfigListener$Default;,
        Lcom/incall/serversdk/config/IConfigListener$Stub;,
        Lcom/incall/serversdk/config/IConfigListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onInitSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
