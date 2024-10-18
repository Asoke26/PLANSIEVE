SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 3
AND p.Score >= 35
AND u.Reputation >= 309
AND u.UpVotes >= 38
AND u.UpVotes <= 625

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;