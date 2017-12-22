.class final Lcom/loc/bp;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# instance fields
.field private synthetic aqC:Lcom/loc/aS;


# direct methods
.method private constructor <init>(Lcom/loc/aS;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bp;->aqC:Lcom/loc/aS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/aS;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/bp;-><init>(Lcom/loc/aS;)V

    return-void
.end method


# virtual methods
.method public final onNmeaReceived(JLjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->aqC:Lcom/loc/aS;

    invoke-static {v0, p1, p2}, Lcom/loc/aS;->aBL(Lcom/loc/aS;J)J

    iget-object v0, p0, Lcom/loc/bp;->aqC:Lcom/loc/aS;

    invoke-static {v0, p3}, Lcom/loc/aS;->aBM(Lcom/loc/aS;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
