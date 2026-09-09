.class public final synthetic Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/wt/musicsdk/MusicOnLineManager;


# direct methods
.method public synthetic constructor <init>(Lcom/wt/musicsdk/MusicOnLineManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda1;->f$0:Lcom/wt/musicsdk/MusicOnLineManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object p0, p0, Lcom/wt/musicsdk/MusicOnLineManager$$ExternalSyntheticLambda1;->f$0:Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "MusicOnLineManager"

    const-string v1, "binderDied called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/wt/musicsdk/MusicOnLineManager;->clearRemote()V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/wt/musicsdk/MusicOnLineManager;->scheduleBindService(J)V

    return-void
.end method
