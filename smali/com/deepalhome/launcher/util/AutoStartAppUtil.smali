.class public final Lcom/deepalhome/launcher/util/AutoStartAppUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/AutoStartAppUtil;

.field public static final initialAutoStartDelay$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static volatile startState:Lcom/deepalhome/launcher/util/AutoStartAppUtil$StartState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/AutoStartAppUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/AutoStartAppUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/AutoStartAppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AutoStartAppUtil;

    sget-object v0, Lcom/deepalhome/launcher/util/AutoStartAppUtil$StartState;->Idle:Lcom/deepalhome/launcher/util/AutoStartAppUtil$StartState;

    sput-object v0, Lcom/deepalhome/launcher/util/AutoStartAppUtil;->startState:Lcom/deepalhome/launcher/util/AutoStartAppUtil$StartState;

    sget-object v0, Lcom/deepalhome/launcher/util/AutoStartAppUtil$initialAutoStartDelay$2;->INSTANCE:Lcom/deepalhome/launcher/util/AutoStartAppUtil$initialAutoStartDelay$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/AutoStartAppUtil;->initialAutoStartDelay$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
