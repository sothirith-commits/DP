.class public final Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->$r8$classId:I

    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->$r8$classId:I

    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->$r8$classId:I

    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    iget v0, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result p0

    return p0

    :sswitch_0
    const/4 p0, 0x0

    return p0

    :sswitch_1
    const/4 p0, 0x1

    return p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onChange(Z)V
    .locals 2

    iget v0, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->updateSb()V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    sget-object p1, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "$appContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->getEnabledServicesString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->lastObservedEnabledServices:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sput-object p1, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->lastObservedEnabledServices:Ljava/lang/String;

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getAccessibilityDaemonEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->syncDaemonServicesFromSettings(Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->startDaemonServiceIfNeeded(Landroid/content/Context;)V

    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getDaemonAccessibilityServices()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->Companion:Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    sget-object p1, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->Companion:Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService$Companion;

    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->getEnabledServicesString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->tmpSettingValue:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->doDaemon(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/cursoradapter/widget/CursorAdapter;

    iget-boolean p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
