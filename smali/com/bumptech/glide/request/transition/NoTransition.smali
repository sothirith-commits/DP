.class public final Lcom/bumptech/glide/request/transition/NoTransition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/request/transition/NoTransition;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/NoTransition;-><init>()V

    new-instance v0, Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
