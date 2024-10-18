SELECT COUNT(*)
 FROM comments c,
postHistory ph
WHERE ph.PostHistoryTypeId=1
AND ph.CreationDate>=84

AND c.UserId = ph.UserId;