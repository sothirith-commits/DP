.class public final synthetic Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$refreshLogcatListenerRegistration$keywords$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$refreshLogcatListenerRegistration$keywords$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$refreshLogcatListenerRegistration$keywords$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$refreshLogcatListenerRegistration$keywords$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$refreshLogcatListenerRegistration$keywords$2;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector$refreshLogcatListenerRegistration$keywords$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "trim(Ljava/lang/String;)Ljava/lang/String;"

    const/4 v5, 0x1

    const/4 v1, 0x1

    const-class v2, Lkotlin/text/StringsKt;

    const-string v3, "trim"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    const-string p0, "p0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
