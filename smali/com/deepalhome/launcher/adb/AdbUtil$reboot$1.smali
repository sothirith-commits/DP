.class public final Lcom/deepalhome/launcher/adb/AdbUtil$reboot$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/adb/AdbUtil$reboot$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/adb/AdbUtil$reboot$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/adb/AdbUtil$reboot$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/adb/AdbUtil$reboot$1;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbUtil$reboot$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
