.class public final Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$2;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
