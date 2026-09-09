.class public final Lcom/umeng/analytics/pro/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:B

.field public final c:Lcom/umeng/analytics/pro/cd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/cc;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/pro/cc;->a:Ljava/lang/String;

    iput-byte p2, p0, Lcom/umeng/analytics/pro/cc;->b:B

    iput-object p3, p0, Lcom/umeng/analytics/pro/cc;->c:Lcom/umeng/analytics/pro/cd;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1

    sget-object v0, Lcom/umeng/analytics/pro/cc;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
