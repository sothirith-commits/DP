.class public final Lcom/deepalhome/launcher/app/AppCenterView$musicChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$musicChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    return-void
.end method


# virtual methods
.method public final onInfoChanged(Lcom/deepalhome/launcher/music/Music;)V
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$musicChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$refreshVisibleMusicPreview(Lcom/deepalhome/launcher/app/AppCenterView;)V

    return-void
.end method

.method public final onMusicAppChanged(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$musicChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$refreshVisibleMusicPreview(Lcom/deepalhome/launcher/app/AppCenterView;)V

    return-void
.end method

.method public final onPrivateSourceChanged(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V
    .locals 0

    return-void
.end method

.method public final onStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$musicChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$refreshVisibleMusicPreview(Lcom/deepalhome/launcher/app/AppCenterView;)V

    return-void
.end method
