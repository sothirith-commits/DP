.class Lcom/incall/serversdk/hicar/IHiCarIistenerIMP;
.super Lcom/incall/serversdk/hicar/IHiCarListener$Stub;
.source "SourceFile"


# instance fields
.field private mIHiCarListener:Lcom/incall/serversdk/hicar/IHiCarListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/hicar/IHiCarListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/hicar/IHiCarListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/hicar/IHiCarIistenerIMP;->mIHiCarListener:Lcom/incall/serversdk/hicar/IHiCarListener;

    return-void
.end method


# virtual methods
.method public onStatusChange(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/hicar/IHiCarIistenerIMP;->mIHiCarListener:Lcom/incall/serversdk/hicar/IHiCarListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/hicar/IHiCarListener;->onStatusChange(Z)V

    return-void
.end method
