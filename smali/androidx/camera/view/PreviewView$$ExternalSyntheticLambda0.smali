.class public final synthetic Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 11

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    iget-object v1, v0, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget v0, v0, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v2, v6, :cond_0

    if-ne v3, v7, :cond_0

    if-ne v4, v8, :cond_0

    if-eq v5, v9, :cond_1

    :cond_0
    new-instance v0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v2, 0x11

    invoke-direct {v0, v2, v1}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    move-object v10, p1

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_0
    move-object v10, p1

    move-object v0, v1

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->$r8$lambda$IvT_DyaTewzQqUY55Lc3koDtn40(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_1
    move-object v0, v1

    check-cast v0, Lcom/deepalhome/launcher/map/MapAppWindow;

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$lambda$gyuQdDM276bjBFvvqsbIxnt2ICg(Lcom/deepalhome/launcher/map/MapAppWindow;IIIIIIII)V

    return-void

    :pswitch_2
    check-cast v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    const-string v0, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attach: container laid out, size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", continue attach"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarSRCardHost"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->waitLayoutListener:Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->waitLayoutListener:Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;

    new-instance v2, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return-void

    :pswitch_3
    move-object v10, p1

    move-object v0, v1

    check-cast v0, Lcom/deepalhome/launcher/app/AppCenterView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/deepalhome/launcher/app/AppCenterView;->$r8$lambda$mcI39ejbpbz2AP6iNgmEiNqG0cQ(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_4
    sget v0, Landroidx/camera/view/PreviewView;->$r8$clinit:I

    check-cast v1, Landroidx/camera/view/PreviewView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int v0, v4, v2

    sub-int v2, v8, v6

    if-ne v0, v2, :cond_5

    sub-int v0, v5, v3

    sub-int v2, v9, v7

    if-eq v0, v2, :cond_6

    :cond_5
    invoke-virtual {v1}, Landroidx/camera/view/PreviewView;->redrawPreview()V

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    invoke-virtual {v1}, Landroidx/camera/view/PreviewView;->getViewPort()Landroidx/camera/core/ViewPort;

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
