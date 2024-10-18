SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 11
AND ph.PostHistoryTypeId = 2

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;