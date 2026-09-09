.class public final Lcom/deepalhome/launcher/util/KeycodeUtil$keycodeLogcatListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/KeycodeUtil$keycodeLogcatListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/KeycodeUtil$keycodeLogcatListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/KeycodeUtil$keycodeLogcatListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/KeycodeUtil$keycodeLogcatListener$1;->INSTANCE:Lcom/deepalhome/launcher/util/KeycodeUtil$keycodeLogcatListener$1;

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
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string p0, "log"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string p0, "CarPropertyValue"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Entry{keyCode="

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/util/KeycodeUtil;->INSTANCE:Lcom/deepalhome/launcher/util/KeycodeUtil;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/KeycodeUtil;->access$parseAndHandleCarProperty(Lcom/deepalhome/launcher/util/KeycodeUtil;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "KeyLongPressGenerator"

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/util/KeycodeUtil;->INSTANCE:Lcom/deepalhome/launcher/util/KeycodeUtil;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/KeycodeUtil;->access$parseAndHandleLongPress(Lcom/deepalhome/launcher/util/KeycodeUtil;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "KeycodeUtil"

    const-string v0, "Error occurred while processing key log"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
