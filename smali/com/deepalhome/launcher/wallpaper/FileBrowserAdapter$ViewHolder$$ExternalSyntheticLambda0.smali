.class public final synthetic Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(ZLcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$file"

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$0:Z

    if-eq p2, p0, :cond_0

    iget-object p0, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
