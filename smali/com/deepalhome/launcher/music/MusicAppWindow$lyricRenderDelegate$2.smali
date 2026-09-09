.class public final Lcom/deepalhome/launcher/music/MusicAppWindow$lyricRenderDelegate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricRenderDelegate$2;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricRenderDelegate$2;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lrcView:Lme/wcy/lrcview/LrcView;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricRenderDelegate$2;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;-><init>(Lme/wcy/lrcview/LrcView;Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;)V

    return-object v0
.end method
