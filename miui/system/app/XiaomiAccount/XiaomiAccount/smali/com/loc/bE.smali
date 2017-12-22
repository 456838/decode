.class public final Lcom/loc/bE;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field ark:Ljava/util/List;

.field arl:Landroid/location/Location;


# direct methods
.method protected constructor <init>(Lcom/loc/bh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bE;->ark:Ljava/util/List;

    return-void
.end method
