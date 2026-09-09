.class public final Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$previousAction$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$previousAction$2;->this$0:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$previousAction$2;->this$0:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->previousItem:Landroid/widget/LinearLayout;

    const-string v2, "previousItem"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$previousAction$2;->this$0:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->previousIconIv:Landroid/widget/ImageView;

    const-string v3, "previousIconIv"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$previousAction$2;->this$0:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->previousLabelTv:Landroid/widget/TextView;

    const-string v3, "previousLabelTv"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0
.end method
