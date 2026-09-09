.class public final Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$13;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$13;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$13;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    sget v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->scheduleFontMenuAutoCollapse()V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$13;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$toggleLyricAnchor(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
