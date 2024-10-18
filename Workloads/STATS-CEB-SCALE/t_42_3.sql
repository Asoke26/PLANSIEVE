SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 2
AND p.Score >= 24
AND u.Reputation >= 244
AND u.UpVotes >= 170
AND u.UpVotes <= 328

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;