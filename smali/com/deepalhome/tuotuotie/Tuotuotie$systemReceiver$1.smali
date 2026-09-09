.class public final Lcom/deepalhome/tuotuotie/Tuotuotie$systemReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    const-string p1, "user_present"

    invoke-static {p0, p1, v0}, Lcom/deepalhome/tuotuotie/Tuotuotie;->access$handleSystemEvent(Lcom/deepalhome/tuotuotie/Tuotuotie;Ljava/lang/String;Z)V

    goto :goto_1

    :sswitch_1
    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    const-string p1, "screen_on"

    invoke-static {p0, p1, v0}, Lcom/deepalhome/tuotuotie/Tuotuotie;->access$handleSystemEvent(Lcom/deepalhome/tuotuotie/Tuotuotie;Ljava/lang/String;Z)V

    goto :goto_1

    :sswitch_2
    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    const/high16 p1, -0x80000000

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "broadcast"

    invoke-static {p2, p0, p1}, Lcom/deepalhome/tuotuotie/Tuotuotie;->onAdapterStateObserved(Ljava/lang/String;II)V

    goto :goto_1

    :sswitch_3
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    const-string p1, "screen_off"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/deepalhome/tuotuotie/Tuotuotie;->access$handleSystemEvent(Lcom/deepalhome/tuotuotie/Tuotuotie;Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_3
        -0x5b36f014 -> :sswitch_2
        -0x56ac2893 -> :sswitch_1
        0x311a1d6c -> :sswitch_0
    .end sparse-switch
.end method
