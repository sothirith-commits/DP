.class public final Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic val$cls:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig$1;->val$cls:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig;

    invoke-direct {p0, p1}, Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig$1;->val$cls:Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig;

    return-object p0
.end method
