SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 33
AND p.Score >= 72
AND u.Reputation >= 271
AND u.UpVotes >= 736
AND u.UpVotes <= 1346

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;