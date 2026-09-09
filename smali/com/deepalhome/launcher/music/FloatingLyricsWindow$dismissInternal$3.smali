.class public final Lcom/deepalhome/launcher/music/FloatingLyricsWindow$dismissInternal$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$dismissInternal$3;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$dismissInternal$3;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget-boolean v1, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->listenersRegistered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->listenersRegistered:Z

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->musicChangedListener:Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->removeOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$dismissInternal$3;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget-object v1, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->musicSettingsChangedListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "listener"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/music/MusicSettingsManager;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    iget-object v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$dismissInternal$3;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget-object v3, v3, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->uiModeChangedListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$uiModeChangedListener$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/theme/UIModeManager;->removeOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    iget-object v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$dismissInternal$3;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget-object v3, v3, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricPayloadAvailableListener:Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$dismissInternal$3;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget-object v1, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowUpdateRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$dismissInternal$3;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iput-boolean v2, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowUpdatePosted:Z

    iput v2, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingWindowUpdateMask:I

    sget-object v0, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/lzf/easyfloat/core/FloatingWindowManager;->INSTANCE:Lcom/lzf/easyfloat/core/FloatingWindowManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "FloatingLyricsWindow"

    invoke-static {v0, v2}, Lcom/lzf/easyfloat/core/FloatingWindowManager;->dismiss(Ljava/lang/String;Z)Lkotlin/Unit;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$dismissInternal$3;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
