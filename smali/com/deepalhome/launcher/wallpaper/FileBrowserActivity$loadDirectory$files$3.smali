.class public final Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$3;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$3;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$3;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$3;

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

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getName(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toLowerCase(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
