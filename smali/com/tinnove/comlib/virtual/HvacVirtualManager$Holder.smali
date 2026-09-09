.class public final Lcom/tinnove/comlib/virtual/HvacVirtualManager$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sInstance:Lcom/tinnove/comlib/virtual/HvacVirtualManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tinnove/comlib/virtual/HvacVirtualManager;-><init>(I)V

    sput-object v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$Holder;->sInstance:Lcom/tinnove/comlib/virtual/HvacVirtualManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
