.class public interface abstract Lcom/incall/serversdk/interactive/ai/IDouAiSmartCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/interactive/ai/IDouAiSmartCallback$Default;,
        Lcom/incall/serversdk/interactive/ai/IDouAiSmartCallback$Stub;,
        Lcom/incall/serversdk/interactive/ai/IDouAiSmartCallback$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onIPStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onOptionSel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
