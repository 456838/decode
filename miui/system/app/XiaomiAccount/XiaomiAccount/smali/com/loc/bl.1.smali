.class public final Lcom/loc/bl;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field aqt:Lcom/loc/g;

.field aqu:Landroid/location/Location;


# direct methods
.method protected constructor <init>(Lcom/loc/bh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loc/g;-><init>(Landroid/telephony/CellLocation;)V

    iput-object v0, p0, Lcom/loc/bl;->aqt:Lcom/loc/g;

    return-void
.end method
