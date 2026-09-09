.class public Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListenerIMP;
.super Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener$Stub;
.source "SourceFile"


# instance fields
.field private mIHiCarVoiceFreeListener:Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListenerIMP;->mIHiCarVoiceFreeListener:Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener;

    return-void
.end method


# virtual methods
.method public onVoiceStatusChange(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListenerIMP;->mIHiCarVoiceFreeListener:Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener;->onVoiceStatusChange(Z)V

    return-void
.end method
