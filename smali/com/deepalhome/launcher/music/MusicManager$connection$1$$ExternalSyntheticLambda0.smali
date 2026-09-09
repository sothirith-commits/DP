.class public final synthetic Lcom/deepalhome/launcher/music/MusicManager$connection$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceConnected$1$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceConnected$1$1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->runOnMain(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
