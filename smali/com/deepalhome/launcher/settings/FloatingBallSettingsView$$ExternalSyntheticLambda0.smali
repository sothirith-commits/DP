.class public final synthetic Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Object;II)V
    .locals 0

    iput p5, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput p4, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget v2, v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$1:I

    const-string v3, "$iconPath"

    const-string v4, "this$0"

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iget v6, v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v6, :pswitch_data_0

    iget-object v10, v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v8, v5

    check-cast v8, Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v10}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->loadIcon(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v1, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;

    iget v9, v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$3:I

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;ILjava/lang/Object;Landroid/graphics/Bitmap;I)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    const-string v3, "$path"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v14, v5

    check-cast v14, Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    iget v4, v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v3, v4, v2}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->loadAnimatedIcon(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-nez v17, :cond_0

    invoke-static {v4, v2}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->loadIcon(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    move-object/from16 v18, v1

    new-instance v1, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;

    iget v15, v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$3:I

    move-object v13, v1

    move-object/from16 v16, v2

    move/from16 v19, v4

    invoke-direct/range {v13 .. v19}, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/floating/FloatingBallIconController;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    sget v6, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->$r8$clinit:I

    iget-object v10, v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v8, v5

    check-cast v8, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->isGif(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2, v10}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->loadAnimatedIcon(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v11, v3

    goto :goto_0

    :cond_1
    move-object v11, v1

    :goto_0
    if-nez v11, :cond_2

    invoke-static {v2, v10}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->loadIcon(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    move-object v12, v1

    new-instance v1, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;

    iget v9, v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;->f$3:I

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;-><init>(Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
