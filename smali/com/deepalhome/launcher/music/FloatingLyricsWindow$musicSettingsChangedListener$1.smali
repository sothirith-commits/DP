.class public final Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyLyricSize()V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyLyricBlur()V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updateTitleVisibility()V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyOpacity()V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyLyricColor()V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->renderCurrentPayload(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
