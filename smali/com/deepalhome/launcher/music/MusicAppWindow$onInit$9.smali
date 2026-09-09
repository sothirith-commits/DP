.class public final Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$9;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$9;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    const-string v0, "view"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$9;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->getInstance(Landroid/content/Context;)Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    move-result-object p0

    sget-object v0, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->dismissInternal()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->show(Z)V

    :goto_0
    invoke-static {}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->isShowing()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
