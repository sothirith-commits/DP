.class public final Lcom/deepalhome/launcher/util/CarUtil$Companion$device$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/CarUtil$Companion$device$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/CarUtil$Companion$device$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/CarUtil$Companion$device$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarUtil$Companion$device$2;->INSTANCE:Lcom/deepalhome/launcher/util/CarUtil$Companion$device$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "DEVICE"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
