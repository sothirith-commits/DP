.class public final synthetic Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/wt/musicsdk/MusicOnLineManager;


# direct methods
.method public synthetic constructor <init>(Lcom/wt/musicsdk/MusicOnLineManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda0;->f$0:Lcom/wt/musicsdk/MusicOnLineManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda0;->f$0:Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "MusicOnLineManager"

    iget-object v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->serviceConnected:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->hasInit:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tinnove.mediacenter.service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.tinnove.mediacenter"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/wt/musicsdk/MusicOnLineManager;->bindServiceAsCurrentUser(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/wt/musicsdk/MusicOnLineManager;->hasInit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "bindServiceAsCurrentUser failed, fallback to bindService"

    invoke-static {p1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/wt/musicsdk/MusicOnLineManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->hasInit:Z

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bindService result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/wt/musicsdk/MusicOnLineManager;->hasInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/wt/musicsdk/MusicOnLineManager;->hasInit:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/wt/musicsdk/MusicOnLineManager;->notifyServiceConnectChanged(Z)V

    :cond_1
    :goto_1
    return v0
.end method
