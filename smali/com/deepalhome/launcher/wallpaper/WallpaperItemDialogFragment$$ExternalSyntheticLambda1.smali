.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    sget v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->$r8$clinit:I

    const-string v0, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "insets"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x7

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p0, :cond_0

    iget v0, p1, Landroid/graphics/Insets;->top:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-object p2

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
