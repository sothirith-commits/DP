.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$switchDownloadedWallpaper$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $next:Z

.field final synthetic this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$switchDownloadedWallpaper$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$switchDownloadedWallpaper$1;->$next:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$switchDownloadedWallpaper$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$switchDownloadedWallpaper$1;->$next:Z

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$performSwitchDownloadedWallpaper(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
