SELECT COUNT(*)
 FROM comments c,
postHistory ph
WHERE c.Score=0
AND ph.PostHistoryTypeId=1

AND c.UserId = ph.UserId;