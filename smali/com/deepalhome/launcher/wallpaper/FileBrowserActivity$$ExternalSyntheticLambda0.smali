.class public final synthetic Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    sget v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->$r8$clinit:I

    const-string v0, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->allowedExtensions:Ljava/util/Set;

    invoke-static {p1}, Lkotlin/io/FilesKt__UtilsKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
