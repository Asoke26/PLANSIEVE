SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
votes v,
users u
WHERE ph.PostHistoryTypeId = 1
AND u.UpVotes = 224
AND c.CreationDate >= 1448

AND u.Id = b.UserId
AND b.UserId = ph.UserId
AND ph.UserId = v.UserId
AND v.UserId = c.UserId;