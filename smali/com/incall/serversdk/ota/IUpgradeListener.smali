.class public Lcom/incall/serversdk/ota/IUpgradeListener;
.super Lcom/incall/serversdk/ota/IUpgradeCallbackListener$Stub;
.source "SourceFile"


# instance fields
.field private mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/ota/IUpgradeCallbackListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/ota/IUpgradeListener;->mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    return-void
.end method


# virtual methods
.method public onCheckStart(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/IUpgradeListener;->mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener;->onCheckStart(Ljava/lang/String;)V

    return-void
.end method

.method public onCheckSuccess(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/IUpgradeListener;->mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener;->onCheckSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onInstallProgress(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/IUpgradeListener;->mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener;->onInstallProgress(Ljava/lang/String;I)V

    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/IUpgradeListener;->mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener;->onInstallSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onRollbackException(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/IUpgradeListener;->mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener;->onRollbackException(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onRollbackProgress(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/IUpgradeListener;->mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener;->onRollbackProgress(Ljava/lang/String;I)V

    return-void
.end method

.method public onRollbackSuccess(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/IUpgradeListener;->mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener;->onRollbackSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onTransProgress(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/IUpgradeListener;->mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener;->onTransProgress(Ljava/lang/String;I)V

    return-void
.end method

.method public onTransSuccess(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/IUpgradeListener;->mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener;->onTransSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgradeException(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/IUpgradeListener;->mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener;->onUpgradeException(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onUpgradeStart(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/IUpgradeListener;->mIUpgradeCallbackListener:Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener;->onUpgradeStart(Ljava/lang/String;)V

    return-void
.end method
