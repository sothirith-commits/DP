.class public final Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/io/File;

    const-string v0, "directory"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    sget v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->loadDirectory(Ljava/io/File;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
